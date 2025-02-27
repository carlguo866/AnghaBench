; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsmld_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.gsm_mux*, %struct.TYPE_2__* }
%struct.gsm_mux = type { i32 }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @gsmld_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsmld_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = call %struct.gsm_mux* (...) @gsm_alloc_mux()
  store %struct.gsm_mux* %16, %struct.gsm_mux** %4, align 8
  %17 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %18 = icmp eq %struct.gsm_mux* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %15
  %23 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 1
  store %struct.gsm_mux* %23, %struct.gsm_mux** %25, align 8
  %26 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %27 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %26, i32 0, i32 0
  store i32 65536, i32* %27, align 8
  %28 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %29 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %31 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %32 = call i32 @gsmld_attach_gsm(%struct.tty_struct* %30, %struct.gsm_mux* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %37 = call i32 @gsm_cleanup_mux(%struct.gsm_mux* %36)
  %38 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %39 = call i32 @mux_put(%struct.gsm_mux* %38)
  br label %40

40:                                               ; preds = %35, %22
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %19, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.gsm_mux* @gsm_alloc_mux(...) #1

declare dso_local i32 @gsmld_attach_gsm(%struct.tty_struct*, %struct.gsm_mux*) #1

declare dso_local i32 @gsm_cleanup_mux(%struct.gsm_mux*) #1

declare dso_local i32 @mux_put(%struct.gsm_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
