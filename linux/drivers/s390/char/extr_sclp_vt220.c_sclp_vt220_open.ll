; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_vt220.c_sclp_vt220_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.tty_struct = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.file = type { i32 }

@sclp_vt220_port = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*)* @sclp_vt220_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_vt220_open(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %31

9:                                                ; preds = %2
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = call i32 @tty_port_tty_set(%struct.TYPE_5__* @sclp_vt220_port, %struct.tty_struct* %10)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_vt220_port, i32 0, i32 0), align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %9
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 24, i32* %26, align 4
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 80, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %17, %9
  br label %31

31:                                               ; preds = %30, %2
  ret i32 0
}

declare dso_local i32 @tty_port_tty_set(%struct.TYPE_5__*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
