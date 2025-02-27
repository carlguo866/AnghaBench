; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_equal.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@h1 = common dso_local global i64 0, align 8
@h2 = common dso_local global i64 0, align 8
@d1 = common dso_local global i32 0, align 4
@l1 = common dso_local global i64 0, align 8
@d2 = common dso_local global i32 0, align 4
@l2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_obj_str_equal(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @mp_obj_is_qstr(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @mp_obj_is_qstr(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %55

18:                                               ; preds = %9, %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @h1, align 8
  %21 = call i32 @GET_STR_HASH(i64 %19, i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @h2, align 8
  %24 = call i32 @GET_STR_HASH(i64 %22, i64 %23)
  %25 = load i64, i64* @h1, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i64, i64* @h2, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i64, i64* @h1, align 8
  %32 = load i64, i64* @h2, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %55

35:                                               ; preds = %30, %27, %18
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* @d1, align 4
  %38 = load i64, i64* @l1, align 8
  %39 = call i32 @GET_STR_DATA_LEN(i64 %36, i32 %37, i64 %38)
  %40 = load i64, i64* %5, align 8
  %41 = load i32, i32* @d2, align 4
  %42 = load i64, i64* @l2, align 8
  %43 = call i32 @GET_STR_DATA_LEN(i64 %40, i32 %41, i64 %42)
  %44 = load i64, i64* @l1, align 8
  %45 = load i64, i64* @l2, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %55

48:                                               ; preds = %35
  %49 = load i32, i32* @d1, align 4
  %50 = load i32, i32* @d2, align 4
  %51 = load i64, i64* @l1, align 8
  %52 = call i64 @memcmp(i32 %49, i32 %50, i64 %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %48, %47, %34, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @mp_obj_is_qstr(i64) #1

declare dso_local i32 @GET_STR_HASH(i64, i64) #1

declare dso_local i32 @GET_STR_DATA_LEN(i64, i32, i64) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
