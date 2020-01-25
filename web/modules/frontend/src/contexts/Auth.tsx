import React from 'react';

const AuthProvider: React.SFC<{ children: React.ReactChildren }> = ({ children }) => {
  return <div>Authenticated</div>;
};

export { AuthProvider };

// const AuthContext = React.createContext({
//   isAuth: false,
//   authLoading: false,
//   userId: -1,
// });

// const AuthProvider: React.SFC<{ children: React.ReactChildren }> = ({ children }) => {
//   const userId = data?.isAuthenticated || -1;
//   const state = {
//     authLoading: loading,
//     userId,
//     isAuth: data?.isAuthenticated > 0,
//     refetchAuth: refetch,
//   };

//   if (error) {
//     // fallback to non-logged-in state
//     state.userId = -1;
//     state.isAuth = false;

//     // @ts-ignore
//     if (__TEST__) {
//       throwGlobalError(error);
//     }
//   }

//   // unify uses TS but doesn't ship typings for desktop
//   // @ts-ignore
//   const renderChildren = loading ? <Loader.Jumper /> : children;

//   return <AuthContext.Provider value={state}>{renderChildren}</AuthContext.Provider>;
// };

// const AuthConsumer = AuthContext.Consumer;
// function withAuth(Component: React.ElementType) {
//   return function Authenticated(props: Record<string, any>): JSX.Element {
//     return <AuthConsumer>{(state): JSX.Element => <Component {...props} auth={state} />}</AuthConsumer>;
//   };
// }

// export { AuthContext, AuthProvider, AuthConsumer, withAuth };
