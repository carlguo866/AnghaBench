; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_lock_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c_dax_lock_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xa_state = type { i32 }

@DAX_LOCKED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xa_state*, i8*)* @dax_lock_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dax_lock_entry(%struct.xa_state* %0, i8* %1) #0 {
  %3 = alloca %struct.xa_state*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.xa_state* %0, %struct.xa_state** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @xa_to_value(i8* %6)
  store i64 %7, i64* %5, align 8
  %8 = load %struct.xa_state*, %struct.xa_state** %3, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @DAX_LOCKED, align 8
  %11 = or i64 %9, %10
  %12 = call i32 @xa_mk_value(i64 %11)
  %13 = call i8* @xas_store(%struct.xa_state* %8, i32 %12)
  ret i8* %13
}

declare dso_local i64 @xa_to_value(i8*) #1

declare dso_local i8* @xas_store(%struct.xa_state*, i32) #1

declare dso_local i32 @xa_mk_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
