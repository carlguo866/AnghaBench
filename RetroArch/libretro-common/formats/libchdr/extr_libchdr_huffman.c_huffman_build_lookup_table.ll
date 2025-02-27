; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_build_lookup_table.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_build_lookup_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { i32, i32, i32*, %struct.node_t* }
%struct.node_t = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @huffman_build_lookup_table(%struct.huffman_decoder* %0) #0 {
  %2 = alloca %struct.huffman_decoder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.node_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.huffman_decoder* %0, %struct.huffman_decoder** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %73, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %12 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %76

15:                                               ; preds = %9
  %16 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %17 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %16, i32 0, i32 3
  %18 = load %struct.node_t*, %struct.node_t** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.node_t, %struct.node_t* %18, i64 %20
  store %struct.node_t* %21, %struct.node_t** %4, align 8
  %22 = load %struct.node_t*, %struct.node_t** %4, align 8
  %23 = getelementptr inbounds %struct.node_t, %struct.node_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %15
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.node_t*, %struct.node_t** %4, align 8
  %29 = getelementptr inbounds %struct.node_t, %struct.node_t* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @MAKE_LOOKUP(i32 %27, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %33 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.node_t*, %struct.node_t** %4, align 8
  %37 = getelementptr inbounds %struct.node_t, %struct.node_t* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %42 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.node_t*, %struct.node_t** %4, align 8
  %45 = getelementptr inbounds %struct.node_t, %struct.node_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  store i32* %50, i32** %6, align 8
  %51 = load %struct.huffman_decoder*, %struct.huffman_decoder** %2, align 8
  %52 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.node_t*, %struct.node_t** %4, align 8
  %55 = getelementptr inbounds %struct.node_t, %struct.node_t* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %5, align 4
  %59 = shl i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %53, i64 %61
  store i32* %62, i32** %7, align 8
  br label %63

63:                                               ; preds = %67, %26
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = icmp ule i32* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  br label %63

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %15
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %9

76:                                               ; preds = %9
  ret void
}

declare dso_local i32 @MAKE_LOOKUP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
