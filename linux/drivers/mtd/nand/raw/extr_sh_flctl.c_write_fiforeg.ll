; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_write_fiforeg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sh_flctl.c_write_fiforeg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_flctl = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_flctl*, i32, i32)* @write_fiforeg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_fiforeg(%struct.sh_flctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_flctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.sh_flctl* %0, %struct.sh_flctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %11 = getelementptr inbounds %struct.sh_flctl, %struct.sh_flctl* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = bitcast i32* %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 3
  %19 = sdiv i32 %18, 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %36, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %26 = call i32 @wait_wfifo_ready(%struct.sh_flctl* %25)
  %27 = load i64*, i64** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @cpu_to_be32(i64 %31)
  %33 = load %struct.sh_flctl*, %struct.sh_flctl** %4, align 8
  %34 = call i32 @FLDTFIFO(%struct.sh_flctl* %33)
  %35 = call i32 @writel(i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %20

39:                                               ; preds = %20
  ret void
}

declare dso_local i32 @wait_wfifo_ready(%struct.sh_flctl*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i32 @FLDTFIFO(%struct.sh_flctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
