; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_linebuf_get.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-hwdb/extr_sd-hwdb.c_linebuf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linebuf = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.linebuf*)* @linebuf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @linebuf_get(%struct.linebuf* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.linebuf*, align 8
  store %struct.linebuf* %0, %struct.linebuf** %3, align 8
  %4 = load %struct.linebuf*, %struct.linebuf** %3, align 8
  %5 = getelementptr inbounds %struct.linebuf, %struct.linebuf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = icmp uge i64 %8, 8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %23

11:                                               ; preds = %1
  %12 = load %struct.linebuf*, %struct.linebuf** %3, align 8
  %13 = getelementptr inbounds %struct.linebuf, %struct.linebuf* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.linebuf*, %struct.linebuf** %3, align 8
  %16 = getelementptr inbounds %struct.linebuf, %struct.linebuf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load %struct.linebuf*, %struct.linebuf** %3, align 8
  %21 = getelementptr inbounds %struct.linebuf, %struct.linebuf* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %2, align 8
  br label %23

23:                                               ; preds = %11, %10
  %24 = load i8*, i8** %2, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
