\name{resolveType}
\alias{resolveType}
\alias{resolveType.GCC::Node::boolean_type}
\alias{resolveType.GCC::Node::enumeral_type}
\alias{resolveType.GCC::Node::function_decl}
\alias{resolveType.GCC::Node::integer_type}
\alias{resolveType.GCC::Node::pointer_type}
\alias{resolveType.GCC::Node::record_type}
\alias{resolveType.GCC::Node::parm_decl}
\alias{resolveType.GCC::Node::type_decl}
\alias{resolveType.GCC::Node::real_type}
\alias{resolveType.GCC::Node::template_type_parm}
\alias{resolveType.GCC::Node::typename_type}
\alias{resolveType.NativeOperatorClassMethod}
\alias{resolveType.ContainerDefinition}
\alias{resolveType.integer}
\alias{resolveType.list}
\alias{resolveType.character}
\alias{resolveType.EnumerationNodeList}
\alias{resolveType.GCC::Node::array_type}
\alias{resolveType.GCC::Node::complex_type}
\alias{resolveType.GCC::Node::field_decl}
\alias{resolveType.GCC::Node::function_type}
\alias{resolveType.GCC::Node::reference_type}
\alias{resolveType.GCC::Node::union_type}
\alias{resolveType.GCC::Node::var_decl}
\alias{resolveType.GCC::Node::void_type}
\alias{resolveType.NativeClassMethod}
\alias{resolveType.NativeRoutine}
\alias{resolveType.NativeRoutineDescription}
\alias{resolveType.numeric}
\alias{resolveType.RoutineNodeList}
\alias{resolveType.TUParserIndex}
\alias{resolveType.UnresolvedClassMethods}

\title{Create high-level, aggregate of translation unit
       nodes}
\description{
 This function converts information in a translation unit node
  into a higher-level, aggregate description of the
  associated data structure, class, routine, variable declaration.
}
\usage{
resolveType(node, nodes, classDefs = DefinitionContainer(nodes), ...)
}

\arguments{
  \item{node}{the translation unit node from which to compute the
    aggregate information.}
  \item{nodes}{the entire array of nodes returned from
    \code{\link{parseTU}}. This is used to jump to other nodes
    not directly linked to \code{node}
    and resolve auxillary types in this function
  }
  \item{classDefs}{This is intended to
    be  a place where previously resolved types are stored and can be
    referenced without having to resolve them again each time they are
    encountered.  As such, it is a library of previously resolved types.
    It is also used to store information about what nodes are currently
    being
    processed so that infinite loops are avoided such as those that
    arise
    when a structure has a field that is a reference to the same data
    type
    as being defined, e.g  \code{struct _A { struct _A *next;}}
  }
  % asRoutine
  \item{\dots}{additional parameters for methods to define.}
}
\details{

}
\value{

}

\references{http://www.omegahat.org/RGccTranslationUnit}
\author{Duncan Temple Lang <duncan@wald.ucdavis.edu>}

\seealso{}
\examples{

}
\keyword{interface}
\keyword{programming}

