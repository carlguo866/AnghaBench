; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_setup_to_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/isci/extr_remote_node_context.c_sci_remote_node_context_setup_to_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sci_remote_node_context = type { i8*, i32, i32 }
%struct.isci_host = type { i32 }

@RNC_DEST_FINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sci_remote_node_context*, i32, i8*)* @sci_remote_node_context_setup_to_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_remote_node_context_setup_to_destroy(%struct.sci_remote_node_context* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sci_remote_node_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.isci_host*, align 8
  store %struct.sci_remote_node_context* %0, %struct.sci_remote_node_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %4, align 8
  %9 = call i32 @rnc_to_dev(%struct.sci_remote_node_context* %8)
  %10 = call %struct.isci_host* @idev_to_ihost(i32 %9)
  store %struct.isci_host* %10, %struct.isci_host** %7, align 8
  %11 = load i32, i32* @RNC_DEST_FINAL, align 4
  %12 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %4, align 8
  %13 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %4, align 8
  %16 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.sci_remote_node_context*, %struct.sci_remote_node_context** %4, align 8
  %19 = getelementptr inbounds %struct.sci_remote_node_context, %struct.sci_remote_node_context* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = load %struct.isci_host*, %struct.isci_host** %7, align 8
  %21 = getelementptr inbounds %struct.isci_host, %struct.isci_host* %20, i32 0, i32 0
  %22 = call i32 @wake_up(i32* %21)
  ret void
}

declare dso_local %struct.isci_host* @idev_to_ihost(i32) #1

declare dso_local i32 @rnc_to_dev(%struct.sci_remote_node_context*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
