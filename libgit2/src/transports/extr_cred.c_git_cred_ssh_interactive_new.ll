; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_cred.c_git_cred_ssh_interactive_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_cred.c_git_cred_ssh_interactive_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i8*, i64, %struct.TYPE_7__* }

@GIT_CREDTYPE_SSH_INTERACTIVE = common dso_local global i32 0, align 4
@ssh_interactive_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_cred_ssh_interactive_new(%struct.TYPE_8__** %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_8__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  %11 = icmp ne %struct.TYPE_8__** %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %15, %12, %4
  %19 = phi i1 [ false, %12 ], [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = call %struct.TYPE_7__* @git__calloc(i32 1, i32 32)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %9, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %23)
  %25 = load i32, i32* @GIT_CREDTYPE_SSH_INTERACTIVE, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @ssh_interactive_free, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call %struct.TYPE_7__* @git__strdup(i8* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %36, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__* %39)
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %5, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %49, align 8
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @git__calloc(i32, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @git__strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
