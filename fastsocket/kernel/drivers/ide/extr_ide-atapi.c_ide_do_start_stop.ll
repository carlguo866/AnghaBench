; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-atapi.c_ide_do_start_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-atapi.c_ide_do_start_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.gendisk = type { i32 }
%struct.ide_atapi_pc = type { i32*, i32 }

@START_STOP = common dso_local global i32 0, align 4
@ide_tape = common dso_local global i64 0, align 8
@PC_FLAG_WAIT_FOR_DSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_do_start_stop(%struct.TYPE_4__* %0, %struct.gendisk* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.gendisk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ide_atapi_pc, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.gendisk* %1, %struct.gendisk** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %7)
  %9 = load i32, i32* @START_STOP, align 4
  %10 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %7, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %7, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 4
  store i32 %13, i32* %16, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ide_tape, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load i32, i32* @PC_FLAG_WAIT_FOR_DSC, align 4
  %24 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %7, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %23
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %22, %3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = load %struct.gendisk*, %struct.gendisk** %5, align 8
  %30 = call i32 @ide_queue_pc_tail(%struct.TYPE_4__* %28, %struct.gendisk* %29, %struct.ide_atapi_pc* %7, i32* null, i32 0)
  ret i32 %30
}

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @ide_queue_pc_tail(%struct.TYPE_4__*, %struct.gendisk*, %struct.ide_atapi_pc*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
