; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_set_dma_hashdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_set_dma_hashdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_aes_dev = type { i32 }
%struct.scatterlist = type { i32 }

@FCHRDMAS = common dso_local global i32 0, align 4
@FCHRDMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_aes_dev*, %struct.scatterlist*)* @s5p_set_dma_hashdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_set_dma_hashdata(%struct.s5p_aes_dev* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.s5p_aes_dev*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.s5p_aes_dev* %0, %struct.s5p_aes_dev** %3, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %4, align 8
  %5 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %6 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %10 = load i32, i32* @FCHRDMAS, align 4
  %11 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %12 = call i32 @sg_dma_address(%struct.scatterlist* %11)
  %13 = call i32 @SSS_WRITE(%struct.s5p_aes_dev* %9, i32 %10, i32 %12)
  %14 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %3, align 8
  %15 = load i32, i32* @FCHRDMAL, align 4
  %16 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %17 = call i32 @sg_dma_len(%struct.scatterlist* %16)
  %18 = call i32 @SSS_WRITE(%struct.s5p_aes_dev* %14, i32 %15, i32 %17)
  ret void
}

declare dso_local i32 @SSS_WRITE(%struct.s5p_aes_dev*, i32, i32) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
