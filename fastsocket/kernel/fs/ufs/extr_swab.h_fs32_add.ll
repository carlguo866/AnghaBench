; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_swab.h_fs32_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_swab.h_fs32_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i64 }

@BYTESEX_LE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32*, i32)* @fs32_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs32_add(%struct.super_block* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BYTESEX_LE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @le32_add_cpu(i32* %14, i32 %15)
  br label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @be32_add_cpu(i32* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @be32_add_cpu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
