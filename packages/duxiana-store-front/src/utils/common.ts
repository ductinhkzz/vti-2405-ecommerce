import { omitBy } from 'lodash-es';

export const parseMetadata = <T extends Array<Record<string, any>>>(
  metadata: Record<string, string>,
): Record<string, T> => {
  return Object.keys(metadata).reduce((pre, key) => {
    return { ...pre, [key]: JSON.parse(metadata[key]) };
  }, {});
};

export const objectToParams = (obj: Record<string, string | number | string[] | undefined | null>) => {
  const newObj = omitBy(obj, (val) => val === undefined || val === null || val === '') as Record<
    string,
    string | number | string[]
  >;

  const keys = Object.keys(newObj);
  const params = new URLSearchParams();

  for (const key of keys) {
    const val = newObj[key];

    if (typeof val === 'number') {
      params.append(key, val.toString());
      continue;
    }

    if (typeof val === 'object') {
      if (val.length > 0 && val.length === 1) {
        params.append(key, '');
      }

      for (const item of val) {
        params.append(key, item);
      }
      continue;
    }

    params.append(key, val);
  }

  return params.toString();
};

export const onlyUnique = (value: unknown, index: number, self: unknown[]) => self.indexOf(value) === index;
