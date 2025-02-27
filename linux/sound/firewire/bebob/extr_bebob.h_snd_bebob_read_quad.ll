; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.h_snd_bebob_read_quad.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.h_snd_bebob_read_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@BEBOB_ADDR_REG_INFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, i64, i32*)* @snd_bebob_read_quad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bebob_read_quad(%struct.fw_unit* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.fw_unit*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.fw_unit* %0, %struct.fw_unit** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.fw_unit*, %struct.fw_unit** %4, align 8
  %8 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %9 = load i64, i64* @BEBOB_ADDR_REG_INFO, align 8
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = call i32 @snd_fw_transaction(%struct.fw_unit* %7, i32 %8, i64 %11, i8* %13, i32 4, i32 0)
  ret i32 %14
}

declare dso_local i32 @snd_fw_transaction(%struct.fw_unit*, i32, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
