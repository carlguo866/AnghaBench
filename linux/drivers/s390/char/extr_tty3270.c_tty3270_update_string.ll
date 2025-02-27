; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_update_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_tty3270.c_tty3270_update_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty3270 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.string = type { i8*, i32 }

@TO_RA = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty3270*, %struct.string*, i32)* @tty3270_update_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty3270_update_string(%struct.tty3270* %0, %struct.string* %1, i32 %2) #0 {
  %4 = alloca %struct.tty3270*, align 8
  %5 = alloca %struct.string*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.tty3270* %0, %struct.tty3270** %4, align 8
  store %struct.string* %1, %struct.string** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %9 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.string*, %struct.string** %5, align 8
  %13 = getelementptr inbounds %struct.string, %struct.string* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %17 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  %22 = call i32 @raw3270_buffer_address(i32 %11, i8* %15, i32 %21)
  %23 = load %struct.string*, %struct.string** %5, align 8
  %24 = getelementptr inbounds %struct.string, %struct.string* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.string*, %struct.string** %5, align 8
  %27 = getelementptr inbounds %struct.string, %struct.string* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  %31 = getelementptr inbounds i8, i8* %30, i64 -4
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @TO_RA, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %3
  %39 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %40 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load %struct.tty3270*, %struct.tty3270** %4, align 8
  %46 = getelementptr inbounds %struct.tty3270, %struct.tty3270* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = mul nsw i32 %48, %50
  %52 = call i32 @raw3270_buffer_address(i32 %42, i8* %44, i32 %51)
  br label %53

53:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @raw3270_buffer_address(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
