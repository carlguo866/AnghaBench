; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_end_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom_subr.c_bhnd_sprom_opcode_end_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SPROM_OPCODE_VAR_STATE_OPEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"no open variable definition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPROM_OPCODE_VAR_STATE_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @bhnd_sprom_opcode_end_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_sprom_opcode_end_var(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SPROM_OPCODE_VAR_STATE_OPEN, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = call i32 @SPROM_OP_BAD(%struct.TYPE_4__* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load i64, i64* @SPROM_OPCODE_VAR_STATE_DONE, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @SPROM_OP_BAD(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
