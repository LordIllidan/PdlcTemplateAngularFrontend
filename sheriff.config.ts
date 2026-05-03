import { sameTag, SheriffConfig } from "@softarc/sheriff-core";

export const config: SheriffConfig = {
  modules: {
    "src/app/features/<feature>": ["feature:<feature>", "type:feature"],
    "src/app/shared": ["type:shared"],
    "src/app/shell": ["type:shell"]
  },
  depRules: {
    "type:feature": [sameTag, "type:shared"],
    "type:shell": ["type:feature", "type:shared"],
    "type:shared": []
  }
};
