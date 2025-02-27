; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_release_module.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_release_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_depend = type { i32 }
%struct.TYPE_3__ = type { i32* }

@kld_sx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"linker_release_module: no file or name\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"linker_release_module: both file and name\00", align 1
@LINKER_UNLOAD_NORMAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linker_release_module(i8* %0, %struct.mod_depend* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mod_depend*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.mod_depend* %1, %struct.mod_depend** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 @sx_xlock(i32* @kld_sx)
  %11 = load i32*, i32** %7, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.mod_depend*, %struct.mod_depend** %6, align 8
  %20 = call %struct.TYPE_3__* @modlist_lookup2(i8* %18, %struct.mod_depend* %19)
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %8, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = icmp eq %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = call i32 @sx_xunlock(i32* @kld_sx)
  %25 = load i32, i32* @ESRCH, align 4
  store i32 %25, i32* %4, align 4
  br label %46

26:                                               ; preds = %13
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %7, align 8
  br label %40

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.mod_depend*, %struct.mod_depend** %6, align 8
  %35 = icmp eq %struct.mod_depend* %34, null
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ false, %30 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @KASSERT(i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %26
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @LINKER_UNLOAD_NORMAL, align 4
  %43 = call i32 @linker_file_unload(i32* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = call i32 @sx_xunlock(i32* @kld_sx)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %23
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_3__* @modlist_lookup2(i8*, %struct.mod_depend*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @linker_file_unload(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
