; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_cmac_gf128_mul_by_x.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_cmac_gf128_mul_by_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, %struct.TYPE_4__*)* @cmac_gf128_mul_by_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmac_gf128_mul_by_x(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @be64_to_cpu(i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @be64_to_cpu(i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 63
  %19 = or i32 %16, %18
  %20 = call i8* @cpu_to_be64(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 63
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 135, i32 0
  %30 = xor i32 %24, %29
  %31 = call i8* @cpu_to_be64(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  ret void
}

declare dso_local i32 @be64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
