; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_create_erase_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-tape.c_idetape_create_erase_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_atapi_pc = type { i32*, i32 }

@ERASE = common dso_local global i32 0, align 4
@PC_FLAG_WAIT_FOR_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_atapi_pc*)* @idetape_create_erase_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idetape_create_erase_cmd(%struct.ide_atapi_pc* %0) #0 {
  %2 = alloca %struct.ide_atapi_pc*, align 8
  store %struct.ide_atapi_pc* %0, %struct.ide_atapi_pc** %2, align 8
  %3 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %2, align 8
  %4 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %3)
  %5 = load i32, i32* @ERASE, align 4
  %6 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %2, align 8
  %7 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  store i32 %5, i32* %9, align 4
  %10 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %2, align 8
  %11 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* @PC_FLAG_WAIT_FOR_DSC, align 4
  %15 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %2, align 8
  %16 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  ret void
}

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
