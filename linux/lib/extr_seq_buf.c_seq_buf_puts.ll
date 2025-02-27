; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_puts.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_seq_buf.c_seq_buf_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_buf = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seq_buf_puts(%struct.seq_buf* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.seq_buf* %0, %struct.seq_buf** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  store i64 %8, i64* %6, align 8
  %9 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %10 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %6, align 8
  %17 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @seq_buf_can_fit(%struct.seq_buf* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %2
  %22 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %23 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %26 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @memcpy(i64 %28, i8* %29, i64 %30)
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 1
  %34 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %35 = getelementptr inbounds %struct.seq_buf, %struct.seq_buf* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, %33
  store i64 %37, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %41

38:                                               ; preds = %2
  %39 = load %struct.seq_buf*, %struct.seq_buf** %4, align 8
  %40 = call i32 @seq_buf_set_overflow(%struct.seq_buf* %39)
  store i32 -1, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @seq_buf_can_fit(%struct.seq_buf*, i64) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @seq_buf_set_overflow(%struct.seq_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
