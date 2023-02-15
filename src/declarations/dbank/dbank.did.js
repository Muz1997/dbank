export const idlFactory = ({ IDL }) => {
  return IDL.Service({ 'topup' : IDL.Func([IDL.Nat], [], ['oneway']) });
};
export const init = ({ IDL }) => { return []; };
