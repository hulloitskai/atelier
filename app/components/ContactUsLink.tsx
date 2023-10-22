import type { FC, ReactNode } from "react";
import type { AnchorProps } from "@mantine/core";

import { useContactUs } from "~/helpers/contactUs";
import type { ContactUsOptions } from "~/helpers/contactUs";

export type ContactUsLinkProps = Omit<AnchorProps, "children"> &
  ContactUsOptions & {
    readonly children: ReactNode;
  };

const ContactUsLink: FC<ContactUsLinkProps> = ({
  subject,
  children,
  ...otherProps
}) => {
  const [contactUs] = useContactUs({ subject });
  return (
    <Anchor component="button" fw={500} onClick={contactUs} {...otherProps}>
      {children}
    </Anchor>
  );
};

export default ContactUsLink;
