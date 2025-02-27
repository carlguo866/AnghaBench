; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_get_miso.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/driver/extr_spi.c_spi_mast_get_miso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@SPI_USR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @spi_mast_get_miso(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %89

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 5
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 15
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i64 0, i64* %4, align 8
  br label %89

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %28, %20
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @SPI_CMD(i32 %22)
  %24 = call i32 @READ_PERI_REG(i64 %23)
  %25 = load i32, i32* @SPI_USR, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %21

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @SPI_W0(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = mul nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %31, %34
  %36 = call i32 @READ_PERI_REG(i64 %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @swap_endianess(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 15
  br i1 %50, label %51, label %72

51:                                               ; preds = %29
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @SPI_W0(i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %53, %57
  %59 = call i32 @READ_PERI_REG(i64 %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %59, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @swap_endianess(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %68, i32* %71, align 4
  br label %72

72:                                               ; preds = %51, %29
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 31
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = sub nsw i32 64, %78
  %80 = ashr i32 %74, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %10, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = shl i64 1, %83
  %85 = sub i64 %84, 1
  %86 = load i64, i64* %10, align 8
  %87 = and i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %72, %19, %13
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

declare dso_local i32 @READ_PERI_REG(i64) #1

declare dso_local i64 @SPI_CMD(i32) #1

declare dso_local i64 @SPI_W0(i32) #1

declare dso_local i8* @swap_endianess(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
