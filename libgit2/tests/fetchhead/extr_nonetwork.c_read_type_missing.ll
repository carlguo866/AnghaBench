; ModuleID = '/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_read_type_missing.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/fetchhead/extr_nonetwork.c_read_type_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"49322bb17d3acc9146f98c97d078513228bbf3c0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"remote_url\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*, i32, i8*)* @read_type_missing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_type_missing(i8* %0, i8* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = call i32 @GIT_UNUSED(i8* %12)
  %14 = call i32 @git_oid_fromstr(i32* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %17)
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @cl_assert_equal_oid(i32* %11, i32* %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @cl_assert(i32 %23)
  ret i32 0
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
