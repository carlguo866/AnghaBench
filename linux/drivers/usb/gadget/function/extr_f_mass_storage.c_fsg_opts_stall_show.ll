; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_opts_stall_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_opts_stall_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.fsg_opts = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*)* @fsg_opts_stall_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsg_opts_stall_show(%struct.config_item* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsg_opts*, align 8
  %6 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.config_item*, %struct.config_item** %3, align 8
  %8 = call %struct.fsg_opts* @to_fsg_opts(%struct.config_item* %7)
  store %struct.fsg_opts* %8, %struct.fsg_opts** %5, align 8
  %9 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %10 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %14 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.fsg_opts*, %struct.fsg_opts** %5, align 8
  %20 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local %struct.fsg_opts* @to_fsg_opts(%struct.config_item*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
