; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_ip6_addr_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_ip6_addr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i32*, i32, i8*)* @ip6_addr_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ip6_addr_string(i8* %0, i8* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.printf_spec, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [46 x i8], align 16
  %12 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  store i32 %3, i32* %12, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 73
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i8*, i8** %10, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 2
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 99
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i64 0, i64 0
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @ip6_compressed_string(i8* %25, i32* %26)
  br label %33

28:                                               ; preds = %18, %5
  %29 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i64 0, i64 0
  %30 = load i32*, i32** %9, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @ip6_string(i8* %29, i32* %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i64 0, i64 0
  %37 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @string(i8* %34, i8* %35, i8* %36, i32 %38)
  ret i8* %39
}

declare dso_local i32 @ip6_compressed_string(i8*, i32*) #1

declare dso_local i32 @ip6_string(i8*, i32*, i8*) #1

declare dso_local i8* @string(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
