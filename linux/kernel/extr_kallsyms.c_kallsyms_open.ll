; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_open.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kallsyms.c_kallsyms_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.kallsym_iter = type { i32 }

@kallsyms_op = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @kallsyms_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kallsyms_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.kallsym_iter*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.file*, %struct.file** %5, align 8
  %8 = call %struct.kallsym_iter* @__seq_open_private(%struct.file* %7, i32* @kallsyms_op, i32 4)
  store %struct.kallsym_iter* %8, %struct.kallsym_iter** %6, align 8
  %9 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %10 = icmp ne %struct.kallsym_iter* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %2
  %15 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %16 = call i32 @reset_iter(%struct.kallsym_iter* %15, i32 0)
  %17 = call i32 (...) @kallsyms_show_value()
  %18 = load %struct.kallsym_iter*, %struct.kallsym_iter** %6, align 8
  %19 = getelementptr inbounds %struct.kallsym_iter, %struct.kallsym_iter* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %14, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.kallsym_iter* @__seq_open_private(%struct.file*, i32*, i32) #1

declare dso_local i32 @reset_iter(%struct.kallsym_iter*, i32) #1

declare dso_local i32 @kallsyms_show_value(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
