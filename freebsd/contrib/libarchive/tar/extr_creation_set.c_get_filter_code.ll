; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_creation_set.c_get_filter_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_creation_set.c_get_filter_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suffix_code_t = type { i8*, i8* }

@get_filter_code.filters = internal constant [13 x %struct.suffix_code_t] [%struct.suffix_code_t { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0) }, %struct.suffix_code_t { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0) }, %struct.suffix_code_t zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c".Z\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c".grz\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"grzip\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".lrz\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"lrzip\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c".lz\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"lzip\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c".lz4\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c".lzo\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"lzop\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c".lzma\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c".uu\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"uuencode\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c".xz\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"xz\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c".zst\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @get_filter_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_filter_code(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @get_suffix_code(%struct.suffix_code_t* getelementptr inbounds ([13 x %struct.suffix_code_t], [13 x %struct.suffix_code_t]* @get_filter_code.filters, i64 0, i64 0), i8* %3)
  ret i8* %4
}

declare dso_local i8* @get_suffix_code(%struct.suffix_code_t*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
