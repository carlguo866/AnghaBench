; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_write_cmd_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_vmw_pvscsi.c_pvscsi_write_cmd_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_adapter = type { i32 }

@PVSCSI_REG_OFFSET_COMMAND = common dso_local global i32 0, align 4
@PVSCSI_REG_OFFSET_COMMAND_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_adapter*, i32, i8*, i64)* @pvscsi_write_cmd_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_write_cmd_desc(%struct.pvscsi_adapter* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.pvscsi_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.pvscsi_adapter* %0, %struct.pvscsi_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = udiv i64 %13, 4
  store i64 %14, i64* %8, align 8
  %15 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %16 = load i32, i32* @PVSCSI_REG_OFFSET_COMMAND, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pvscsi_reg_write(%struct.pvscsi_adapter* %15, i32 %16, i32 %17)
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %31, %4
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.pvscsi_adapter*, %struct.pvscsi_adapter** %5, align 8
  %25 = load i32, i32* @PVSCSI_REG_OFFSET_COMMAND_DATA, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pvscsi_reg_write(%struct.pvscsi_adapter* %24, i32 %25, i32 %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %19

34:                                               ; preds = %19
  ret void
}

declare dso_local i32 @pvscsi_reg_write(%struct.pvscsi_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
