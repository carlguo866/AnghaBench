; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_associative_operation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_simplify-rtx.c_simplify_associative_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64)* @simplify_associative_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simplify_associative_operation(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = call i32 @GET_CODE(i64 %11)
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %48

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @GET_CODE(i64 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @XEXP(i64 %24, i32 0)
  %26 = call i64 @simplify_gen_binary(i32 %21, i32 %22, i64 %23, i64 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @XEXP(i64 %30, i32 1)
  %32 = call i64 @simplify_gen_binary(i32 %27, i32 %28, i64 %29, i64 %31)
  store i64 %32, i64* %5, align 8
  br label %136

33:                                               ; preds = %15
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @swap_commutative_operands_p(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @simplify_gen_binary(i32 %39, i32 %40, i64 %41, i64 %42)
  store i64 %43, i64* %5, align 8
  br label %136

44:                                               ; preds = %33
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %44, %4
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @GET_CODE(i64 %49)
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %135

53:                                               ; preds = %48
  %54 = load i64, i64* %8, align 8
  %55 = call i64 @XEXP(i64 %54, i32 1)
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @swap_commutative_operands_p(i64 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @XEXP(i64 %62, i32 0)
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @simplify_gen_binary(i32 %60, i32 %61, i64 %63, i64 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @XEXP(i64 %69, i32 1)
  %71 = call i64 @simplify_gen_binary(i32 %66, i32 %67, i64 %68, i64 %70)
  store i64 %71, i64* %5, align 8
  br label %136

72:                                               ; preds = %53
  %73 = load i64, i64* %8, align 8
  %74 = call i64 @XEXP(i64 %73, i32 1)
  %75 = load i64, i64* %9, align 8
  %76 = call i64 @swap_commutative_operands_p(i64 %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @XEXP(i64 %82, i32 1)
  %84 = call i64 @simplify_binary_operation(i32 %79, i32 %80, i64 %81, i64 %83)
  br label %92

85:                                               ; preds = %72
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @XEXP(i64 %88, i32 1)
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @simplify_binary_operation(i32 %86, i32 %87, i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %85, %78
  %93 = phi i64 [ %84, %78 ], [ %91, %85 ]
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i64, i64* %8, align 8
  %100 = call i64 @XEXP(i64 %99, i32 0)
  %101 = load i64, i64* %10, align 8
  %102 = call i64 @simplify_gen_binary(i32 %97, i32 %98, i64 %100, i64 %101)
  store i64 %102, i64* %5, align 8
  br label %136

103:                                              ; preds = %92
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @XEXP(i64 %104, i32 0)
  %106 = load i64, i64* %9, align 8
  %107 = call i64 @swap_commutative_operands_p(i64 %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %8, align 8
  %114 = call i64 @XEXP(i64 %113, i32 0)
  %115 = call i64 @simplify_binary_operation(i32 %110, i32 %111, i64 %112, i64 %114)
  br label %123

116:                                              ; preds = %103
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @XEXP(i64 %119, i32 0)
  %121 = load i64, i64* %9, align 8
  %122 = call i64 @simplify_binary_operation(i32 %117, i32 %118, i64 %120, i64 %121)
  br label %123

123:                                              ; preds = %116, %109
  %124 = phi i64 [ %115, %109 ], [ %122, %116 ]
  store i64 %124, i64* %10, align 8
  %125 = load i64, i64* %10, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i64 @XEXP(i64 %131, i32 1)
  %133 = call i64 @simplify_gen_binary(i32 %128, i32 %129, i64 %130, i64 %132)
  store i64 %133, i64* %5, align 8
  br label %136

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %48
  store i64 0, i64* %5, align 8
  br label %136

136:                                              ; preds = %135, %127, %96, %59, %38, %20
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @simplify_gen_binary(i32, i32, i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @swap_commutative_operands_p(i64, i64) #1

declare dso_local i64 @simplify_binary_operation(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
