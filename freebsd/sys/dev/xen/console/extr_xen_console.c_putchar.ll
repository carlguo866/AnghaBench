; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_putchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.putchar_arg = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putchar(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.putchar_arg*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.putchar_arg*
  store %struct.putchar_arg* %7, %struct.putchar_arg** %5, align 8
  %8 = load %struct.putchar_arg*, %struct.putchar_arg** %5, align 8
  %9 = getelementptr inbounds %struct.putchar_arg, %struct.putchar_arg* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = bitcast i32* %3 to i8*
  %14 = call i32 @HYPERVISOR_console_write(i8* %13, i32 1)
  br label %46

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.putchar_arg*, %struct.putchar_arg** %5, align 8
  %18 = getelementptr inbounds %struct.putchar_arg, %struct.putchar_arg* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.putchar_arg*, %struct.putchar_arg** %5, align 8
  %21 = getelementptr inbounds %struct.putchar_arg, %struct.putchar_arg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i32, i32* %19, i64 %24
  store i32 %16, i32* %25, align 4
  %26 = load %struct.putchar_arg*, %struct.putchar_arg** %5, align 8
  %27 = getelementptr inbounds %struct.putchar_arg, %struct.putchar_arg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.putchar_arg*, %struct.putchar_arg** %5, align 8
  %30 = getelementptr inbounds %struct.putchar_arg, %struct.putchar_arg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br i1 false, label %34, label %45

34:                                               ; preds = %33, %15
  %35 = load %struct.putchar_arg*, %struct.putchar_arg** %5, align 8
  %36 = getelementptr inbounds %struct.putchar_arg, %struct.putchar_arg* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load %struct.putchar_arg*, %struct.putchar_arg** %5, align 8
  %40 = getelementptr inbounds %struct.putchar_arg, %struct.putchar_arg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @HYPERVISOR_console_write(i8* %38, i32 %41)
  %43 = load %struct.putchar_arg*, %struct.putchar_arg** %5, align 8
  %44 = getelementptr inbounds %struct.putchar_arg, %struct.putchar_arg* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %34, %33
  br label %46

46:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @HYPERVISOR_console_write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
