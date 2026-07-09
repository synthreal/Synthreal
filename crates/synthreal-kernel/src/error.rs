//! Kernel-specific error types.

use synthreal_types::error::SynthrealError;
use thiserror::Error;

/// Kernel error type wrapping SynthrealError with kernel-specific context.
#[derive(Error, Debug)]
pub enum KernelError {
    /// A wrapped SynthrealError.
    #[error(transparent)]
    Synthreal(#[from] SynthrealError),

    /// The kernel failed to boot.
    #[error("Boot failed: {0}")]
    BootFailed(String),
}

/// Alias for kernel results.
pub type KernelResult<T> = Result<T, KernelError>;
