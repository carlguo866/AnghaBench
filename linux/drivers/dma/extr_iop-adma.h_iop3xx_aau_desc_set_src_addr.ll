; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop3xx_aau_desc_set_src_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop3xx_aau_desc_set_src_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop3xx_desc_aau = type { %struct.TYPE_2__*, i8** }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop3xx_desc_aau*, i32, i8*)* @iop3xx_aau_desc_set_src_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop3xx_aau_desc_set_src_addr(%struct.iop3xx_desc_aau* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.iop3xx_desc_aau*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.iop3xx_desc_aau* %0, %struct.iop3xx_desc_aau** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %4, align 8
  %12 = getelementptr inbounds %struct.iop3xx_desc_aau, %struct.iop3xx_desc_aau* %11, i32 0, i32 1
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  store i8* %10, i8** %16, align 8
  br label %26

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.iop3xx_desc_aau*, %struct.iop3xx_desc_aau** %4, align 8
  %20 = getelementptr inbounds %struct.iop3xx_desc_aau, %struct.iop3xx_desc_aau* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @__desc_idx(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i8* %18, i8** %25, align 8
  br label %26

26:                                               ; preds = %17, %9
  ret void
}

declare dso_local i64 @__desc_idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
