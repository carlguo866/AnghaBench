; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-ia64-opc.c_ext_cimmu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_cpu-ia64-opc.c_ext_cimmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_operand = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ia64_operand*, i32, i32*)* @ext_cimmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ext_cimmu(%struct.ia64_operand* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ia64_operand*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ia64_operand* %0, %struct.ia64_operand** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ia64_operand*, %struct.ia64_operand** %4, align 8
  %10 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 1, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ia64_operand*, %struct.ia64_operand** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = call i8* @ext_immu(%struct.ia64_operand* %17, i32 %18, i32* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %3
  %24 = load %struct.ia64_operand*, %struct.ia64_operand** %4, align 8
  %25 = getelementptr inbounds %struct.ia64_operand, %struct.ia64_operand* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = xor i32 %34, %32
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %23, %3
  %37 = load i8*, i8** %7, align 8
  ret i8* %37
}

declare dso_local i8* @ext_immu(%struct.ia64_operand*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
