; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_move_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvpair.c_nvpair_move_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i64 0, align 8
@NV_TYPE_NVLIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nvpair_move_nvlist(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = call i32* @nvlist_get_nvpair_parent(i32* %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i64, i64* @EINVAL, align 8
  %15 = call i32 @ERRNO_SET(i64 %14)
  store i32* null, i32** %3, align 8
  br label %44

16:                                               ; preds = %9
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @nvlist_error(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @nvlist_error(i32* %21)
  %23 = call i32 @ERRNO_SET(i64 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @nvlist_destroy(i32* %24)
  store i32* null, i32** %3, align 8
  br label %44

26:                                               ; preds = %16
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* @NV_TYPE_NVLIST, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = trunc i64 %30 to i32
  %32 = call i32* @nvpair_allocv(i8* %27, i32 %28, i32 %31, i32 0, i32 0)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @nvlist_destroy(i32* %36)
  br label %42

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @nvlist_set_parent(i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load i32*, i32** %6, align 8
  store i32* %43, i32** %3, align 8
  br label %44

44:                                               ; preds = %42, %20, %13
  %45 = load i32*, i32** %3, align 8
  ret i32* %45
}

declare dso_local i32* @nvlist_get_nvpair_parent(i32*) #1

declare dso_local i32 @ERRNO_SET(i64) #1

declare dso_local i64 @nvlist_error(i32*) #1

declare dso_local i32 @nvlist_destroy(i32*) #1

declare dso_local i32* @nvpair_allocv(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @nvlist_set_parent(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
