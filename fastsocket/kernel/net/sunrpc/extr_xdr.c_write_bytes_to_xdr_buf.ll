; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_write_bytes_to_xdr_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_write_bytes_to_xdr_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_bytes_to_xdr_buf(%struct.xdr_buf* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdr_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xdr_buf, align 4
  %11 = alloca i32, align 4
  store %struct.xdr_buf* %0, %struct.xdr_buf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.xdr_buf*, %struct.xdr_buf** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @xdr_buf_subsegment(%struct.xdr_buf* %12, %struct.xdr_buf* %10, i32 %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @__write_bytes_to_xdr_buf(%struct.xdr_buf* %10, i8* %21, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @xdr_buf_subsegment(%struct.xdr_buf*, %struct.xdr_buf*, i32, i32) #1

declare dso_local i32 @__write_bytes_to_xdr_buf(%struct.xdr_buf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
