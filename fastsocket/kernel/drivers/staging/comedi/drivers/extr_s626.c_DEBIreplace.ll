; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_DEBIreplace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/drivers/extr_s626.c_DEBIreplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@P_DEBICMD = common dso_local global i32 0, align 4
@DEBI_CMD_RDWORD = common dso_local global i32 0, align 4
@DEBI_CMD_WRWORD = common dso_local global i32 0, align 4
@P_DEBIAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @DEBIreplace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DEBIreplace(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @P_DEBICMD, align 4
  %10 = load i32, i32* @DEBI_CMD_RDWORD, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @WR7146(i32 %9, i32 %12)
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = call i32 @DEBItransfer(%struct.comedi_device* %14)
  %16 = load i32, i32* @P_DEBICMD, align 4
  %17 = load i32, i32* @DEBI_CMD_WRWORD, align 4
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @WR7146(i32 %16, i32 %19)
  %21 = load i32, i32* @P_DEBIAD, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @P_DEBIAD, align 4
  %24 = call i64 @RR7146(i32 %23)
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = or i32 %22, %27
  %29 = call i32 @WR7146(i32 %21, i32 %28)
  %30 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %31 = call i32 @DEBItransfer(%struct.comedi_device* %30)
  ret void
}

declare dso_local i32 @WR7146(i32, i32) #1

declare dso_local i32 @DEBItransfer(%struct.comedi_device*) #1

declare dso_local i64 @RR7146(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
