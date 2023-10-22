import type { PageComponent, PagePropsWithData } from "~/helpers/inertia";
import { Text } from "@mantine/core";

import type { AdminPageQuery } from "~/helpers/graphql";

import AppLayout from "~/components/AppLayout";

export type AdminPageProps = PagePropsWithData<AdminPageQuery>;

const AdminPage: PageComponent<AdminPageProps> = () => {
  return (
    <Stack>
      <Card withBorder>
        <Stack gap="xs">
          <Stack align="center" gap={0}>
            <Title order={2} size="h4">
              Some section
            </Title>
            <Text size="sm" c="dimmed" lh={1.3}>
              Import data from your services
            </Text>
          </Stack>
          <Stack gap={6}>
            <Button>Some action</Button>
          </Stack>
        </Stack>
      </Card>
    </Stack>
  );
};

AdminPage.layout = buildLayout<AdminPageProps>((page, { data: { viewer } }) => (
  <AppLayout
    title="Admin"
    breadcrumbs={[
      { title: "Home", href: "/" },
      { title: "Admin", href: "/admin" },
    ]}
    withContainer
    withGutter
    containerSize="xs"
    {...{ viewer }}
  >
    {page}
  </AppLayout>
));

export default AdminPage;
