; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-packet.c_dns_packet_append_uint32.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-packet.c_dns_packet_append_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_packet_append_uint32(i32* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = call i32 @dns_packet_extend(i32* %12, i32 4, i8** %8, i64* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @unaligned_write_be32(i8* %20, i32 %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %17
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @dns_packet_extend(i32*, i32, i8**, i64*) #1

declare dso_local i32 @unaligned_write_be32(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
