; ModuleID = '/home/carl/AnghaBench/ish/fs/extr_fd.c_fd_setflags.c'
source_filename = "/home/carl/AnghaBench/ish/fs/extr_fd.c_fd_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@FD_ALLOWED_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_setflags(%struct.fd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fd*, align 8
  %5 = alloca i32, align 4
  store %struct.fd* %0, %struct.fd** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.fd*, %struct.fd** %4, align 8
  %7 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.fd*, i32)**
  %11 = load i32 (%struct.fd*, i32)*, i32 (%struct.fd*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.fd*, i32)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.fd*, %struct.fd** %4, align 8
  %15 = getelementptr inbounds %struct.fd, %struct.fd* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.fd*, i32)**
  %19 = load i32 (%struct.fd*, i32)*, i32 (%struct.fd*, i32)** %18, align 8
  %20 = load %struct.fd*, %struct.fd** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %19(%struct.fd* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.fd*, %struct.fd** %4, align 8
  %25 = getelementptr inbounds %struct.fd, %struct.fd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FD_ALLOWED_FLAGS, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FD_ALLOWED_FLAGS, align 4
  %32 = and i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load %struct.fd*, %struct.fd** %4, align 8
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %23, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
