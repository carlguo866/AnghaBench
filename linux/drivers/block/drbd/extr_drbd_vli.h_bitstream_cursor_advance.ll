; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_vli.h_bitstream_cursor_advance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_vli.h_bitstream_cursor_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bitstream_cursor = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bitstream_cursor*, i32)* @bitstream_cursor_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitstream_cursor_advance(%struct.bitstream_cursor* %0, i32 %1) #0 {
  %3 = alloca %struct.bitstream_cursor*, align 8
  %4 = alloca i32, align 4
  store %struct.bitstream_cursor* %0, %struct.bitstream_cursor** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bitstream_cursor*, %struct.bitstream_cursor** %3, align 8
  %6 = getelementptr inbounds %struct.bitstream_cursor, %struct.bitstream_cursor* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %8, %7
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bitstream_cursor*, %struct.bitstream_cursor** %3, align 8
  %11 = getelementptr inbounds %struct.bitstream_cursor, %struct.bitstream_cursor* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = lshr i32 %13, 3
  %15 = zext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = load %struct.bitstream_cursor*, %struct.bitstream_cursor** %3, align 8
  %18 = getelementptr inbounds %struct.bitstream_cursor, %struct.bitstream_cursor* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 7
  %21 = load %struct.bitstream_cursor*, %struct.bitstream_cursor** %3, align 8
  %22 = getelementptr inbounds %struct.bitstream_cursor, %struct.bitstream_cursor* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
