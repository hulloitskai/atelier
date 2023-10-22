import { FieldPolicy, FieldReadFunction, TypePolicies, TypePolicy } from '@apollo/client/cache';
export type ImageKeySpecifier = ('id' | 'signedId' | 'url' | ImageKeySpecifier)[];
export type ImageFieldPolicy = {
	id?: FieldPolicy<any> | FieldReadFunction<any>,
	signedId?: FieldPolicy<any> | FieldReadFunction<any>,
	url?: FieldPolicy<any> | FieldReadFunction<any>
};
export type InputFieldErrorKeySpecifier = ('field' | 'message' | InputFieldErrorKeySpecifier)[];
export type InputFieldErrorFieldPolicy = {
	field?: FieldPolicy<any> | FieldReadFunction<any>,
	message?: FieldPolicy<any> | FieldReadFunction<any>
};
export type MutationKeySpecifier = ('requestUserEmailVerification' | 'requestUserPasswordReset' | 'testMutation' | 'updateUserEmail' | 'updateUserProfile' | MutationKeySpecifier)[];
export type MutationFieldPolicy = {
	requestUserEmailVerification?: FieldPolicy<any> | FieldReadFunction<any>,
	requestUserPasswordReset?: FieldPolicy<any> | FieldReadFunction<any>,
	testMutation?: FieldPolicy<any> | FieldReadFunction<any>,
	updateUserEmail?: FieldPolicy<any> | FieldReadFunction<any>,
	updateUserProfile?: FieldPolicy<any> | FieldReadFunction<any>
};
export type NodeKeySpecifier = ('id' | NodeKeySpecifier)[];
export type NodeFieldPolicy = {
	id?: FieldPolicy<any> | FieldReadFunction<any>
};
export type QueryKeySpecifier = ('activityStatus' | 'announcement' | 'bootedAt' | 'contactEmail' | 'imageBySignedId' | 'passwordStrength' | 'testEcho' | 'user' | 'viewer' | QueryKeySpecifier)[];
export type QueryFieldPolicy = {
	activityStatus?: FieldPolicy<any> | FieldReadFunction<any>,
	announcement?: FieldPolicy<any> | FieldReadFunction<any>,
	bootedAt?: FieldPolicy<any> | FieldReadFunction<any>,
	contactEmail?: FieldPolicy<any> | FieldReadFunction<any>,
	imageBySignedId?: FieldPolicy<any> | FieldReadFunction<any>,
	passwordStrength?: FieldPolicy<any> | FieldReadFunction<any>,
	testEcho?: FieldPolicy<any> | FieldReadFunction<any>,
	user?: FieldPolicy<any> | FieldReadFunction<any>,
	viewer?: FieldPolicy<any> | FieldReadFunction<any>
};
export type RequestUserEmailVerificationPayloadKeySpecifier = ('clientMutationId' | 'success' | RequestUserEmailVerificationPayloadKeySpecifier)[];
export type RequestUserEmailVerificationPayloadFieldPolicy = {
	clientMutationId?: FieldPolicy<any> | FieldReadFunction<any>,
	success?: FieldPolicy<any> | FieldReadFunction<any>
};
export type RequestUserPasswordResetPayloadKeySpecifier = ('clientMutationId' | 'success' | RequestUserPasswordResetPayloadKeySpecifier)[];
export type RequestUserPasswordResetPayloadFieldPolicy = {
	clientMutationId?: FieldPolicy<any> | FieldReadFunction<any>,
	success?: FieldPolicy<any> | FieldReadFunction<any>
};
export type SubscriptionKeySpecifier = ('activityStatus' | 'testSubscription' | SubscriptionKeySpecifier)[];
export type SubscriptionFieldPolicy = {
	activityStatus?: FieldPolicy<any> | FieldReadFunction<any>,
	testSubscription?: FieldPolicy<any> | FieldReadFunction<any>
};
export type TestModelKeySpecifier = ('birthday' | 'id' | 'name' | TestModelKeySpecifier)[];
export type TestModelFieldPolicy = {
	birthday?: FieldPolicy<any> | FieldReadFunction<any>,
	id?: FieldPolicy<any> | FieldReadFunction<any>,
	name?: FieldPolicy<any> | FieldReadFunction<any>
};
export type TestMutationPayloadKeySpecifier = ('clientMutationId' | 'errors' | 'model' | 'success' | TestMutationPayloadKeySpecifier)[];
export type TestMutationPayloadFieldPolicy = {
	clientMutationId?: FieldPolicy<any> | FieldReadFunction<any>,
	errors?: FieldPolicy<any> | FieldReadFunction<any>,
	model?: FieldPolicy<any> | FieldReadFunction<any>,
	success?: FieldPolicy<any> | FieldReadFunction<any>
};
export type UpdateUserEmailPayloadKeySpecifier = ('clientMutationId' | 'errors' | 'success' | 'user' | UpdateUserEmailPayloadKeySpecifier)[];
export type UpdateUserEmailPayloadFieldPolicy = {
	clientMutationId?: FieldPolicy<any> | FieldReadFunction<any>,
	errors?: FieldPolicy<any> | FieldReadFunction<any>,
	success?: FieldPolicy<any> | FieldReadFunction<any>,
	user?: FieldPolicy<any> | FieldReadFunction<any>
};
export type UpdateUserProfilePayloadKeySpecifier = ('clientMutationId' | 'errors' | 'success' | 'user' | UpdateUserProfilePayloadKeySpecifier)[];
export type UpdateUserProfilePayloadFieldPolicy = {
	clientMutationId?: FieldPolicy<any> | FieldReadFunction<any>,
	errors?: FieldPolicy<any> | FieldReadFunction<any>,
	success?: FieldPolicy<any> | FieldReadFunction<any>,
	user?: FieldPolicy<any> | FieldReadFunction<any>
};
export type UserKeySpecifier = ('avatar' | 'email' | 'id' | 'isOwner' | 'name' | 'unverifiedEmail' | UserKeySpecifier)[];
export type UserFieldPolicy = {
	avatar?: FieldPolicy<any> | FieldReadFunction<any>,
	email?: FieldPolicy<any> | FieldReadFunction<any>,
	id?: FieldPolicy<any> | FieldReadFunction<any>,
	isOwner?: FieldPolicy<any> | FieldReadFunction<any>,
	name?: FieldPolicy<any> | FieldReadFunction<any>,
	unverifiedEmail?: FieldPolicy<any> | FieldReadFunction<any>
};
export type StrictTypedTypePolicies = {
	Image?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | ImageKeySpecifier | (() => undefined | ImageKeySpecifier),
		fields?: ImageFieldPolicy,
	},
	InputFieldError?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | InputFieldErrorKeySpecifier | (() => undefined | InputFieldErrorKeySpecifier),
		fields?: InputFieldErrorFieldPolicy,
	},
	Mutation?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | MutationKeySpecifier | (() => undefined | MutationKeySpecifier),
		fields?: MutationFieldPolicy,
	},
	Node?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | NodeKeySpecifier | (() => undefined | NodeKeySpecifier),
		fields?: NodeFieldPolicy,
	},
	Query?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | QueryKeySpecifier | (() => undefined | QueryKeySpecifier),
		fields?: QueryFieldPolicy,
	},
	RequestUserEmailVerificationPayload?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | RequestUserEmailVerificationPayloadKeySpecifier | (() => undefined | RequestUserEmailVerificationPayloadKeySpecifier),
		fields?: RequestUserEmailVerificationPayloadFieldPolicy,
	},
	RequestUserPasswordResetPayload?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | RequestUserPasswordResetPayloadKeySpecifier | (() => undefined | RequestUserPasswordResetPayloadKeySpecifier),
		fields?: RequestUserPasswordResetPayloadFieldPolicy,
	},
	Subscription?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | SubscriptionKeySpecifier | (() => undefined | SubscriptionKeySpecifier),
		fields?: SubscriptionFieldPolicy,
	},
	TestModel?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | TestModelKeySpecifier | (() => undefined | TestModelKeySpecifier),
		fields?: TestModelFieldPolicy,
	},
	TestMutationPayload?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | TestMutationPayloadKeySpecifier | (() => undefined | TestMutationPayloadKeySpecifier),
		fields?: TestMutationPayloadFieldPolicy,
	},
	UpdateUserEmailPayload?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | UpdateUserEmailPayloadKeySpecifier | (() => undefined | UpdateUserEmailPayloadKeySpecifier),
		fields?: UpdateUserEmailPayloadFieldPolicy,
	},
	UpdateUserProfilePayload?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | UpdateUserProfilePayloadKeySpecifier | (() => undefined | UpdateUserProfilePayloadKeySpecifier),
		fields?: UpdateUserProfilePayloadFieldPolicy,
	},
	User?: Omit<TypePolicy, "fields" | "keyFields"> & {
		keyFields?: false | UserKeySpecifier | (() => undefined | UserKeySpecifier),
		fields?: UserFieldPolicy,
	}
};
export type TypedTypePolicies = StrictTypedTypePolicies & TypePolicies;