; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_read_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/cdrom/extr_cdrom.c_cdrom_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.cdrom_device_ops* }
%struct.cdrom_device_ops = type { i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)* }
%struct.cdrom_device_info.0 = type opaque
%struct.packet_command = type { i32*, i32 }

@GPCMD_READ_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdrom_device_info*, %struct.packet_command*, i32, i32, i32, i32)* @cdrom_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdrom_read_block(%struct.cdrom_device_info* %0, %struct.packet_command* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.cdrom_device_info*, align 8
  %8 = alloca %struct.packet_command*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cdrom_device_ops*, align 8
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %7, align 8
  store %struct.packet_command* %1, %struct.packet_command** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %7, align 8
  %15 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %14, i32 0, i32 0
  %16 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %15, align 8
  store %struct.cdrom_device_ops* %16, %struct.cdrom_device_ops** %13, align 8
  %17 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %18 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %17, i32 0, i32 0
  %19 = call i32 @memset(i32** %18, i32 0, i32 8)
  %20 = load i32, i32* @GPCMD_READ_CD, align 4
  %21 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %22 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = shl i32 %25, 2
  %27 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %28 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = ashr i32 %31, 24
  %33 = and i32 %32, 255
  %34 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %35 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %33, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %42 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 8
  %47 = and i32 %46, 255
  %48 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %49 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 255
  %54 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %55 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 255
  %61 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %62 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 6
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  %68 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %69 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 7
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = and i32 %72, 255
  %74 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %75 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 8
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %82 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %12, align 4
  switch i32 %83, label %99 [
    i32 129, label %84
    i32 128, label %89
    i32 130, label %94
  ]

84:                                               ; preds = %6
  %85 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %86 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 9
  store i32 88, i32* %88, align 4
  br label %104

89:                                               ; preds = %6
  %90 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %91 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 9
  store i32 120, i32* %93, align 4
  br label %104

94:                                               ; preds = %6
  %95 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %96 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 9
  store i32 248, i32* %98, align 4
  br label %104

99:                                               ; preds = %6
  %100 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %101 = getelementptr inbounds %struct.packet_command, %struct.packet_command* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 9
  store i32 16, i32* %103, align 4
  br label %104

104:                                              ; preds = %99, %94, %89, %84
  %105 = load %struct.cdrom_device_ops*, %struct.cdrom_device_ops** %13, align 8
  %106 = getelementptr inbounds %struct.cdrom_device_ops, %struct.cdrom_device_ops* %105, i32 0, i32 0
  %107 = load i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)*, i32 (%struct.cdrom_device_info.0*, %struct.packet_command*)** %106, align 8
  %108 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %7, align 8
  %109 = bitcast %struct.cdrom_device_info* %108 to %struct.cdrom_device_info.0*
  %110 = load %struct.packet_command*, %struct.packet_command** %8, align 8
  %111 = call i32 %107(%struct.cdrom_device_info.0* %109, %struct.packet_command* %110)
  ret i32 %111
}

declare dso_local i32 @memset(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
