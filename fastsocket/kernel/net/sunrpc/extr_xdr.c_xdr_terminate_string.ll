; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_terminate_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c_xdr_terminate_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_buf = type { i64, i32* }

@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xdr_terminate_string(%struct.xdr_buf* %0, i64 %1) #0 {
  %3 = alloca %struct.xdr_buf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.xdr_buf* %0, %struct.xdr_buf** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %7 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KM_USER0, align 4
  %12 = call i8* @kmap_atomic(i32 %10, i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.xdr_buf*, %struct.xdr_buf** %3, align 8
  %15 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %16, %17
  %19 = getelementptr inbounds i8, i8* %13, i64 %18
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @KM_USER0, align 4
  %22 = call i32 @kunmap_atomic(i8* %20, i32 %21)
  ret void
}

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
