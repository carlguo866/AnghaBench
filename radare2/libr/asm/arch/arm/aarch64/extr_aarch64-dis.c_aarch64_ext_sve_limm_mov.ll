; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_aarch64_ext_sve_limm_mov.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/aarch64/extr_aarch64-dis.c_aarch64_ext_sve_limm_mov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aarch64_ext_sve_limm_mov(i32* %0, %struct.TYPE_11__* %1, i32 %2, %struct.TYPE_12__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @aarch64_get_qualifier_esize(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @aarch64_ext_limm(i32* %19, %struct.TYPE_11__* %20, i32 %21, %struct.TYPE_12__* %22, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i64 @aarch64_sve_dupm_mov_immediate_p(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %26, %5
  %35 = phi i1 [ false, %5 ], [ %33, %26 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @aarch64_get_qualifier_esize(i32) #1

declare dso_local i64 @aarch64_ext_limm(i32*, %struct.TYPE_11__*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i64 @aarch64_sve_dupm_mov_immediate_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
