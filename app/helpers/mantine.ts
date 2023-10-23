import {
  ActionIcon,
  Alert,
  Anchor,
  Badge,
  Button,
  DEFAULT_THEME,
  Loader,
  LoadingOverlay,
  Menu,
  Modal,
  NumberInput,
  PasswordInput,
  Text,
  TextInput,
  Textarea,
  ThemeIcon,
  createTheme,
  mergeThemeOverrides,
} from "@mantine/core";
import type { DefaultMantineColor, MantineColorsTuple } from "@mantine/core";

import cx from "clsx";
import classes from "./mantine.module.css";

export type CustomColors = "primary" | DefaultMantineColor;

declare module "@mantine/core" {
  export interface MantineThemeColorsOverride {
    colors: Record<CustomColors, MantineColorsTuple>;
  }

  export interface MantineThemeOther {
    fontFamilyCursive: string;
    fontFamilySans: string;
  }
}

const BASE_THEME_OVERRIDE = createTheme({
  other: {
    fontFamilyCursive: "'Rock Salt', cursive",
    fontFamilySans:
      "Inter, Helvetica, -apple-system, BlinkMacSystemFont, sans-serif",
  },
  colors: {
    primary: [
      "#eaf3ff",
      "#d8e3f8",
      "#b1c5ea",
      "#87a4dc",
      "#6489d1",
      "#4d78ca",
      "#406fc8",
      "#315eb1",
      "#28539f",
      "#19488e",
    ],
    secondary: [
      "#f4edff",
      "#e4d9f6",
      "#c5aeea",
      "#a683df",
      "#8a5dd5",
      "#7946cf",
      "#7139cd",
      "#602cb6",
      "#5526a3",
      "#491f91",
    ],
    accent: [
      "#ffecf2",
      "#f7d8e1",
      "#ecadc1",
      "#e2819e",
      "#d95c80",
      "#d4446e",
      "#d23765",
      "#bb2954",
      "#a7224b",
      "#931640",
    ],
  },
  primaryColor: "primary",
  fontFamily: "Hahmlet, 'Times New Roman', Times, serif",
  // fontFamily:
  //   "Manrope, Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, " +
  //   "Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji",
  fontFamilyMonospace:
    "JetBrains Mono, ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, " +
    "Liberation Mono, Courier New, monospace",
  headings: {
    fontFamily: 'Hahmlet, "Times New Roman", Times, serif',
    // fontFamily:
    //   "Manrope, Inter, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, " +
    //   "Arial, sans-serif, Apple Color Emoji, Segoe UI Emoji",
  },
  focusClassName: cx("mantine-focus-auto", classes.focus),
  components: {
    ActionIcon: ActionIcon.extend({
      defaultProps: {
        variant: "subtle",
      },
    }),
    Alert: Alert.extend({
      defaultProps: {
        radius: "xs",
        // radius: "md",
      },
      styles: {
        title: {
          fontWeight: 800,
        },
      },
    }),
    Badge: Badge.extend({
      defaultProps: {
        radius: "xs",
      },
    }),
    Button: Button.extend({
      defaultProps: {
        radius: "xs",
        // shadow: "sm",
      },
      classNames: {
        root: classes.button,
        label: classes.buttonLabel,
      },
    }),
    Card: Card.extend({
      defaultProps: {
        radius: "xs",
        shadow: "sm",
        // radius: "md",
      },
    }),
    Loader: Loader.extend({
      defaultProps: {
        color: "primary.5",
      },
    }),
    LoadingOverlay: LoadingOverlay.extend({
      defaultProps: {
        loaderProps: {
          size: "sm",
        },
      },
    }),
    Menu: Menu.extend({
      defaultProps: {
        radius: "xs",
        shadow: "sm",
        // radius: "md",
      },
    }),
    Modal: Modal.extend({
      styles: ({ headings: { sizes, ...style } }) => ({
        title: {
          ...sizes.h3,
          ...style,
        },
      }),
    }),
    NumberInput: NumberInput.extend({
      defaultProps: {
        radius: "xs",
        // radius: "md",
      },
    }),
    PasswordInput: PasswordInput.extend({
      defaultProps: {
        radius: "xs",
        // radius: "md",
      },
    }),
    Textarea: Textarea.extend({
      defaultProps: {
        radius: "xs",
        // radius: "md",
      },
    }),
    TextInput: TextInput.extend({
      defaultProps: {
        radius: "xs",
        // radius: "md",
      },
    }),
    ThemeIcon: ThemeIcon.extend({
      defaultProps: {
        variant: "default",
      },
    }),
  },
  ...(import.meta.env.DEV && { respectReducedMotion: false }),
});

const APP_THEME_OVERRIDE = createTheme({
  components: {
    TextInput: TextInput.extend({
      styles: ({ fontSizes }) => ({
        input: {
          fontSize: fontSizes.md,
        },
      }),
    }),
  },
});

export const APP_THEME = mergeThemeOverrides(
  DEFAULT_THEME,
  BASE_THEME_OVERRIDE,
  APP_THEME_OVERRIDE,
);

const EMAIL_THEME_OVERRIDE = createTheme({
  components: {
    Text: Text.extend({
      defaultProps: {
        size: "sm",
      },
      classNames: {
        root: classes.emailText,
      },
    }),
    Anchor: Anchor.extend({
      defaultProps: {
        underline: "always",
      },
    }),
  },
});

export const EMAIL_THEME = mergeThemeOverrides(
  DEFAULT_THEME,
  BASE_THEME_OVERRIDE,
  EMAIL_THEME_OVERRIDE,
);
