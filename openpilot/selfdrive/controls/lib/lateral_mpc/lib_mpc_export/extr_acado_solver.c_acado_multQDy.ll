; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_solver.c_acado_multQDy.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/controls/lib/lateral_mpc/lib_mpc_export/extr_acado_solver.c_acado_multQDy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acado_multQDy(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = add nsw i32 %13, %20
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = add nsw i32 %21, %28
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = add nsw i32 %29, %36
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = add nsw i32 %37, %44
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = add nsw i32 %54, %61
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = add nsw i32 %62, %69
  %71 = load i32*, i32** %4, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = add nsw i32 %70, %77
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 9
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = add nsw i32 %78, %85
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 10
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load i32*, i32** %4, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 11
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = add nsw i32 %95, %102
  %104 = load i32*, i32** %4, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 12
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = add nsw i32 %103, %110
  %112 = load i32*, i32** %4, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 13
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = add nsw i32 %111, %118
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 14
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = mul nsw i32 %122, %125
  %127 = add nsw i32 %119, %126
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %4, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 15
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %132, %135
  %137 = load i32*, i32** %4, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 16
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  %144 = add nsw i32 %136, %143
  %145 = load i32*, i32** %4, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 17
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = add nsw i32 %144, %151
  %153 = load i32*, i32** %4, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 18
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 3
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %155, %158
  %160 = add nsw i32 %152, %159
  %161 = load i32*, i32** %4, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 19
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 4
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %163, %166
  %168 = add nsw i32 %160, %167
  %169 = load i32*, i32** %6, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 3
  store i32 %168, i32* %170, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
