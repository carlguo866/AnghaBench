; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objint.c_mp_obj_int_binary_op_extra_cases.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objint.c_mp_obj_int_binary_op_extra_cases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_const_false = common dso_local global i64 0, align 8
@mp_const_true = common dso_local global i64 0, align 8
@MP_BINARY_OP_MULTIPLY = common dso_local global i64 0, align 8
@mp_type_tuple = common dso_local global i32 0, align 4
@mp_type_list = common dso_local global i32 0, align 4
@MP_OBJ_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_obj_int_binary_op_extra_cases(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @mp_const_false, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @MP_OBJ_NEW_SMALL_INT(i32 0)
  %15 = call i64 @mp_binary_op(i64 %12, i64 %13, i64 %14)
  store i64 %15, i64* %4, align 8
  br label %51

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @mp_const_true, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @MP_OBJ_NEW_SMALL_INT(i32 1)
  %24 = call i64 @mp_binary_op(i64 %21, i64 %22, i64 %23)
  store i64 %24, i64* %4, align 8
  br label %51

25:                                               ; preds = %16
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @MP_BINARY_OP_MULTIPLY, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @mp_obj_is_str_or_bytes(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @mp_obj_is_type(i64 %34, i32* @mp_type_tuple)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @mp_obj_is_type(i64 %38, i32* @mp_type_list)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %33, %29
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @mp_binary_op(i64 %42, i64 %43, i64 %44)
  store i64 %45, i64* %4, align 8
  br label %51

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46, %25
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* @MP_OBJ_NULL, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %41, %20, %11
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i64 @mp_binary_op(i64, i64, i64) #1

declare dso_local i64 @MP_OBJ_NEW_SMALL_INT(i32) #1

declare dso_local i64 @mp_obj_is_str_or_bytes(i64) #1

declare dso_local i64 @mp_obj_is_type(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
