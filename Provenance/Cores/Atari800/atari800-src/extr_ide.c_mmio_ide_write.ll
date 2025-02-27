; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_mmio_ide_write.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_mmio_ide_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*, i32, i32)* @mmio_ide_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmio_ide_write(%struct.ide_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ide_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ide_device* %0, %struct.ide_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 15
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %3
  %12 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %13 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %18 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %19 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @ide_data_writew(%struct.ide_device* %17, i32 0, i32 %24)
  br label %81

26:                                               ; preds = %11
  %27 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %28 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %35 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  br label %45

36:                                               ; preds = %26
  %37 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %38 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %39 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 %41, 8
  %43 = or i32 %40, %42
  %44 = call i32 @ide_data_writew(%struct.ide_device* %37, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %47 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %53 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  br label %81

54:                                               ; preds = %3
  %55 = load i32, i32* %5, align 4
  %56 = icmp sge i32 %55, 8
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 8
  %60 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %61 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sub nsw i32 %63, 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  br label %80

67:                                               ; preds = %54
  %68 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.ide_device*, %struct.ide_device** %4, align 8
  %71 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @ide_ioport_write(%struct.ide_device* %68, i32 %69, i32 %78)
  br label %80

80:                                               ; preds = %67, %57
  br label %81

81:                                               ; preds = %16, %80, %45
  ret void
}

declare dso_local i32 @ide_data_writew(%struct.ide_device*, i32, i32) #1

declare dso_local i32 @ide_ioport_write(%struct.ide_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
