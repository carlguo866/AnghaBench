; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-dbg.c_debug_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ehci-dbg.c_debug_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.debug_buffer* }
%struct.debug_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @debug_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.debug_buffer*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.debug_buffer*, %struct.debug_buffer** %7, align 8
  store %struct.debug_buffer* %8, %struct.debug_buffer** %5, align 8
  %9 = load %struct.debug_buffer*, %struct.debug_buffer** %5, align 8
  %10 = icmp ne %struct.debug_buffer* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.debug_buffer*, %struct.debug_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.debug_buffer, %struct.debug_buffer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @vfree(i32 %14)
  %16 = load %struct.debug_buffer*, %struct.debug_buffer** %5, align 8
  %17 = call i32 @kfree(%struct.debug_buffer* %16)
  br label %18

18:                                               ; preds = %11, %2
  ret i32 0
}

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.debug_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
