; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lasat/extr_sysctl.c_proc_dolasatstring.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lasat/extr_sysctl.c_proc_dolasatstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_dolasatstring(%struct.ctl_table* %0, i32 %1, i8* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ctl_table* %0, %struct.ctl_table** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = load i64*, i64** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @proc_dostring(%struct.ctl_table* %13, i32 %14, i8* %15, i64* %16, i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %5
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %28

26:                                               ; preds = %21
  %27 = call i32 (...) @lasat_write_eeprom_info()
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @proc_dostring(%struct.ctl_table*, i32, i8*, i64*, i32*) #1

declare dso_local i32 @lasat_write_eeprom_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
