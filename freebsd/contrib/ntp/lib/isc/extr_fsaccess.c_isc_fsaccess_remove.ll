; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_fsaccess.c_isc_fsaccess_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_fsaccess.c_isc_fsaccess_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_FSACCESS_OWNER = common dso_local global i32 0, align 4
@ISC_FSACCESS_GROUP = common dso_local global i32 0, align 4
@GROUP = common dso_local global i32 0, align 4
@ISC_FSACCESS_OTHER = common dso_local global i32 0, align 4
@OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_fsaccess_remove(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 7
  %9 = zext i1 %8 to i32
  %10 = call i32 @REQUIRE(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 255
  %13 = zext i1 %12 to i32
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @ISC_FSACCESS_OWNER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, -1
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %3
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ISC_FSACCESS_GROUP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @GROUP, align 4
  %33 = shl i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @ISC_FSACCESS_OTHER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @OTHER, align 4
  %46 = shl i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
