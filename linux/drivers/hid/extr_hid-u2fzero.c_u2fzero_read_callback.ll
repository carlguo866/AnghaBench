; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_read_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-u2fzero.c_u2fzero_read_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.u2fzero_transfer_context* }
%struct.u2fzero_transfer_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @u2fzero_read_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u2fzero_read_callback(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.u2fzero_transfer_context*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %4 = load %struct.urb*, %struct.urb** %2, align 8
  %5 = getelementptr inbounds %struct.urb, %struct.urb* %4, i32 0, i32 1
  %6 = load %struct.u2fzero_transfer_context*, %struct.u2fzero_transfer_context** %5, align 8
  store %struct.u2fzero_transfer_context* %6, %struct.u2fzero_transfer_context** %3, align 8
  %7 = load %struct.urb*, %struct.urb** %2, align 8
  %8 = getelementptr inbounds %struct.urb, %struct.urb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.u2fzero_transfer_context*, %struct.u2fzero_transfer_context** %3, align 8
  %11 = getelementptr inbounds %struct.u2fzero_transfer_context, %struct.u2fzero_transfer_context* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.u2fzero_transfer_context*, %struct.u2fzero_transfer_context** %3, align 8
  %13 = getelementptr inbounds %struct.u2fzero_transfer_context, %struct.u2fzero_transfer_context* %12, i32 0, i32 0
  %14 = call i32 @complete(i32* %13)
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
