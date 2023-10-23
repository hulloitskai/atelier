import type { FC } from "react";
import type { PageComponent, PagePropsWithData } from "~/helpers/inertia";

import BellIcon from "~icons/heroicons/bell-20-solid";
import InstagramIcon from "~icons/lucide/instagram";

import { Text, Image } from "@mantine/core";
import type { BoxProps, MantineColor, TextProps } from "@mantine/core";

import type { HomePageQuery } from "~/helpers/graphql";

import AppLayout from "~/components/AppLayout";

import heroSrc from "~/assets/images/hero.png";
import crayonEffect1Src from "~/assets/images/crayon-effect-1.png";
import crayonEffect2Src from "~/assets/images/crayon-effect-2.png";
import cloudMascotSrc from "~/assets/images/cloud-mascot.png";
import starMascotSrc from "~/assets/images/star-mascot.png";

import classes from "./HomePage.module.css";

export type HomePageProps = PagePropsWithData<HomePageQuery>;

const HomePage: PageComponent<HomePageProps> = ({ data: { announcement } }) => {
  const sectionTextProps: TextProps = {
    size: "xl",
    fz: 40,
    fw: 600,
    lh: 1.3,
  };
  return (
    <Stack gap={96} my="md" className={classes.root}>
      <Container size="sm" w="100%">
        {!!announcement && <Alert icon={<BellIcon />}>{announcement}</Alert>}
      </Container>
      <Container w="100%">
        <Group justify="center" gap={40}>
          <Stack gap="lg" style={{ flexGrow: 1 }}>
            <Box style={{ textAlign: "center" }}>
              <Text size="xl" c="gray.7" fw={600} fz={36} lh={1}>
                Welcome to
              </Text>
              <Title fz={72} lh={1.3}>
                Atelier
              </Title>
            </Box>
            <Divider w="100%" maw={440} style={{ alignSelf: "center" }} />
            <Stack gap={8} w="100%" maw={440} style={{ alignSelf: "center" }}>
              <Button
                component="a"
                href="https://lu.ma/atelier.ubc"
                target="_blank"
                rel="noopener noreferrer"
                size="xl"
                h="unset"
                py="md"
                styles={{
                  inner: {
                    alignItems: "start",
                  },
                }}
              >
                <Stack gap={4}>
                  <Text span inherit fz={28}>
                    join us :)
                  </Text>
                  <Text span size="sm">
                    Sundays at noon
                  </Text>
                </Stack>
              </Button>
              <Button
                component="a"
                href="https://instagram.com/atelier.ubc"
                target="_blank"
                rel="noopener noreferrer"
                leftSection={<InstagramIcon />}
                color="secondary"
              >
                Give us a follow on insta
              </Button>
            </Stack>
          </Stack>
          <Stack gap="xs" maw={540} miw={340}>
            <Image src={heroSrc} alt="hero" />
            <Text lh={1.3}>
              at·el·ier: a workshop or studio, especially one used by an artist
              or designer.
            </Text>
          </Stack>
        </Group>
      </Container>
      <Stack>
        <Container w="100%">
          <Text {...sectionTextProps} maw={340} style={{ alignSelf: "start" }}>
            We gather{" "}
            <Text
              span
              inherit
              ff="var(--other-font-family-cursive)"
              fw={100}
              c="dark.4"
            >
              weekly
            </Text>{" "}
            to work on cool{" "}
            <Text
              span
              inherit
              ff="var(--other-font-family-cursive)"
              fw={100}
              c="dark.4"
            >
              stuff
            </Text>
          </Text>
        </Container>
        <Box h={120} pos="relative">
          <Center
            pos="absolute"
            style={{
              top: rem(-175),
              left: 0,
              right: 0,
              zIndex: -1,
              pointerEvents: "none",
            }}
          >
            <Image src={crayonEffect1Src} w={440} />
          </Center>
          <Banner
            words={["NO SCHOOLWORK ALLOWED"]}
            color="#2B6ECE"
            c="#D6FFBD"
            w="100vw"
            style={{
              position: "absolute",
              left: 0,
              right: 0,
              top: rem(44),
              transform: `translateX(${rem(-8)}) rotate(-7deg)`,
            }}
          />
        </Box>
        <Container
          w="100%"
          style={{
            alignSelf: "end",
            display: "flex",
            flexDirection: "column",
            alignItems: "end",
          }}
        >
          <Text size="xl" style={{ textAlign: "end" }}>
            Our members work on
          </Text>
          <Text {...sectionTextProps} maw={770} style={{ textAlign: "end" }}>
            software,{" "}
            <Text span inherit c="gray.6">
              paintings
            </Text>
            , drawings,{" "}
            <Text span inherit c="gray.6">
              research
            </Text>
            , music,{" "}
            <Text span inherit c="gray.6">
              games
            </Text>
            , writing,{" "}
            <Text span inherit c="gray.6">
              graphics
            </Text>
            , videos,{" "}
            <Text span inherit c="gray.6">
              design
            </Text>
            , and more...
          </Text>
        </Container>
      </Stack>
      <Stack gap={0} mt="xl">
        <Container w="100%">
          <Text {...sectionTextProps}>Pushing off that side project?</Text>
        </Container>
        <Container w="100%">
          <Group justify="center">
            <Text
              {...sectionTextProps}
              ff="var(--other-font-family-cursive)"
              fw={100}
              fz={60}
              maw={340}
              c="dark.4"
            >
              It&apos;s time to start.
            </Text>
            <Box pos="relative" w={400} h={250}>
              <Image
                src={crayonEffect2Src}
                pos="absolute"
                w={400}
                top={-110}
                right={0}
              />
              <Image
                src={cloudMascotSrc}
                w={270}
                pos="absolute"
                top={30}
                right={40}
              />
            </Box>
          </Group>
        </Container>
        <Container w="100%">
          <Text {...sectionTextProps}>
            We believe to be creative, you need dedicated time to{" "}
            <Text
              span
              inherit
              ff="var(--other-font-family-cursive)"
              fw={100}
              c="dark.4"
            >
              Create
            </Text>
          </Text>
        </Container>
        <Box pos="relative" h={200} mt="xl">
          <Banner
            words={["GROWTH BY COMMUNITY CREATION"]}
            color="#5721A0"
            c="#E7F9FF"
            w="100vw"
            style={{
              position: "absolute",
              left: 0,
              right: 0,
              top: rem(80),
              transform: `translateX(${rem(-8)}) rotate(4deg)`,
            }}
          />
          <Banner
            words={[
              "EXPLORE",
              "MESS UP",
              "ITERATE",
              "LEARN",
              "EXPERIMENT",
              "PLAY",
              "BE CURIOUS",
              "IDEATE",
            ]}
            color="#BC004C"
            c="#FFE99D"
            w="100vw"
            style={{
              position: "absolute",
              left: 0,
              right: 0,
              top: rem(90),
              transform: `translateX(${rem(-8)}) rotate(-4deg)`,
            }}
          />
        </Box>
      </Stack>
      <Container w="100%">
        <Stack gap="xl">
          <Stack align="center" gap={8}>
            <Text
              ff="var(--other-font-family-cursive)"
              fw={100}
              fz={72}
              c="dark.4"
            >
              You in?
            </Text>
            <Text {...sectionTextProps} fw={800}>
              Every Sunday
            </Text>
            <Text {...sectionTextProps} fw={400} fz={32}>
              12-3pm
            </Text>
          </Stack>
          <Group justify="center">
            <Box w={140} h={140} pos="relative">
              <Image src={starMascotSrc} pos="absolute" top={0} left={0} />
            </Box>
            <Text {...sectionTextProps} fw={800} maw={200}>
              Open to{" "}
              <Text span inherit ff="var(--other-font-family-cursive)" fw={100}>
                anyone
              </Text>
              !
            </Text>
          </Group>
          <Button
            component="a"
            href="https://lu.ma/atelier.ubc"
            target="_blank"
            rel="noopener noreferrer"
            size="xl"
            w="100%"
            maw={340}
            style={{ alignSelf: "center" }}
          >
            join us :)
          </Button>
        </Stack>
      </Container>
      <Box />
    </Stack>
  );
};

HomePage.layout = buildLayout<HomePageProps>((page, { data: { viewer } }) => (
  <AppLayout padding={0} {...{ viewer }}>
    {page}
  </AppLayout>
));

export default HomePage;

type BannerProps = Omit<BoxProps, "children"> & {
  readonly words: string[];
  readonly color: MantineColor;
};

const Banner: FC<BannerProps> = ({ words, color, style, ...otherProps }) => {
  const repeatedWords = useMemo(() => {
    const repeatedWords: string[] = [];
    for (let i = 0; i < 36; i++) {
      repeatedWords.push(words[i % words.length]!);
    }
    return repeatedWords.join(" • ");
  }, [words]);
  return (
    <Box
      c="var(--mantine-color-white)"
      bg={color}
      ff="var(--other-font-family-sans)"
      fz="xs"
      fw={700}
      px={8}
      py={4}
      style={[
        style,
        {
          textTransform: "none",
          whiteSpace: "nowrap",
          overflow: "hidden",
          border: `var(--mantine-color-black) ${rem(1)} solid`,
        },
      ]}
      {...otherProps}
    >
      {repeatedWords}
    </Box>
  );
};
