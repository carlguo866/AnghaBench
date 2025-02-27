; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_decap_v4.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_xdp_noinline.c_decap_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.eth_hdr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_md*, i8**, i8**)* @decap_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decap_v4(%struct.xdp_md* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xdp_md*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.eth_hdr*, align 8
  %9 = alloca %struct.eth_hdr*, align 8
  store %struct.xdp_md* %0, %struct.xdp_md** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.eth_hdr*
  store %struct.eth_hdr* %12, %struct.eth_hdr** %9, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr i8, i8* %14, i64 4
  %16 = bitcast i8* %15 to %struct.eth_hdr*
  store %struct.eth_hdr* %16, %struct.eth_hdr** %8, align 8
  %17 = load %struct.eth_hdr*, %struct.eth_hdr** %8, align 8
  %18 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.eth_hdr*, %struct.eth_hdr** %9, align 8
  %21 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32 %19, i32 %22, i32 6)
  %24 = load %struct.eth_hdr*, %struct.eth_hdr** %8, align 8
  %25 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.eth_hdr*, %struct.eth_hdr** %9, align 8
  %28 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcpy(i32 %26, i32 %29, i32 6)
  %31 = load %struct.eth_hdr*, %struct.eth_hdr** %8, align 8
  %32 = getelementptr inbounds %struct.eth_hdr, %struct.eth_hdr* %31, i32 0, i32 0
  store i32 8, i32* %32, align 4
  %33 = load %struct.xdp_md*, %struct.xdp_md** %5, align 8
  %34 = call i64 @bpf_xdp_adjust_head(%struct.xdp_md* %33, i32 4)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

37:                                               ; preds = %3
  %38 = load %struct.xdp_md*, %struct.xdp_md** %5, align 8
  %39 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load i8**, i8*** %6, align 8
  store i8* %41, i8** %42, align 8
  %43 = load %struct.xdp_md*, %struct.xdp_md** %5, align 8
  %44 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load i8**, i8*** %7, align 8
  store i8* %46, i8** %47, align 8
  store i32 1, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %36
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @bpf_xdp_adjust_head(%struct.xdp_md*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
