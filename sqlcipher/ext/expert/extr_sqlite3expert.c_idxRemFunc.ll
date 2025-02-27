; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxRemFunc.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/expert/extr_sqlite3expert.c_idxRemFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IdxRemCtx = type { i32, %struct.IdxRemSlot* }
%struct.IdxRemSlot = type { i32, i8*, i32, i32, i32, i32 }

@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @idxRemFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idxRemFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.IdxRemCtx*, align 8
  %8 = alloca %struct.IdxRemSlot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @sqlite3_user_data(i32* %12)
  %14 = inttoptr i64 %13 to %struct.IdxRemCtx*
  store %struct.IdxRemCtx* %14, %struct.IdxRemCtx** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 2
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32**, i32*** %6, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @sqlite3_value_int(i32* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.IdxRemCtx*, %struct.IdxRemCtx** %7, align 8
  %25 = getelementptr inbounds %struct.IdxRemCtx, %struct.IdxRemCtx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.IdxRemCtx*, %struct.IdxRemCtx** %7, align 8
  %31 = getelementptr inbounds %struct.IdxRemCtx, %struct.IdxRemCtx* %30, i32 0, i32 1
  %32 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %32, i64 %34
  store %struct.IdxRemSlot* %35, %struct.IdxRemSlot** %8, align 8
  %36 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %37 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %72 [
    i32 129, label %39
    i32 130, label %40
    i32 131, label %46
    i32 132, label %52
    i32 128, label %62
  ]

39:                                               ; preds = %3
  br label %72

40:                                               ; preds = %3
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %43 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @sqlite3_result_int64(i32* %41, i32 %44)
  br label %72

46:                                               ; preds = %3
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %49 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sqlite3_result_double(i32* %47, i32 %50)
  br label %72

52:                                               ; preds = %3
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %55 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %58 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %61 = call i32 @sqlite3_result_blob(i32* %53, i8* %56, i32 %59, i32 %60)
  br label %72

62:                                               ; preds = %3
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %65 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %68 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %71 = call i32 @sqlite3_result_text(i32* %63, i8* %66, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %3, %62, %52, %46, %40, %39
  %73 = load i32**, i32*** %6, align 8
  %74 = getelementptr inbounds i32*, i32** %73, i64 1
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @sqlite3_value_type(i32* %75)
  %77 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %78 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %80 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %157 [
    i32 129, label %82
    i32 130, label %83
    i32 131, label %90
    i32 132, label %97
    i32 128, label %97
  ]

82:                                               ; preds = %72
  br label %157

83:                                               ; preds = %72
  %84 = load i32**, i32*** %6, align 8
  %85 = getelementptr inbounds i32*, i32** %84, i64 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @sqlite3_value_int64(i32* %86)
  %88 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %89 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  br label %157

90:                                               ; preds = %72
  %91 = load i32**, i32*** %6, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @sqlite3_value_double(i32* %93)
  %95 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %96 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  br label %157

97:                                               ; preds = %72, %72
  %98 = load i32**, i32*** %6, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @sqlite3_value_bytes(i32* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %104 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %102, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %97
  %108 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %109 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 %111, 2
  %113 = call i64 @sqlite3_realloc(i8* %110, i32 %112)
  %114 = inttoptr i64 %113 to i8*
  store i8* %114, i8** %11, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %107
  %118 = load i32*, i32** %4, align 8
  %119 = call i32 @sqlite3_result_error_nomem(i32* %118)
  br label %157

120:                                              ; preds = %107
  %121 = load i32, i32* %10, align 4
  %122 = mul nsw i32 %121, 2
  %123 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %124 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load i8*, i8** %11, align 8
  %126 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %127 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %120, %97
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %131 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %133 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 132
  br i1 %135, label %136, label %146

136:                                              ; preds = %128
  %137 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %138 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load i32**, i32*** %6, align 8
  %141 = getelementptr inbounds i32*, i32** %140, i64 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @sqlite3_value_blob(i32* %142)
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @memcpy(i8* %139, i32 %143, i32 %144)
  br label %156

146:                                              ; preds = %128
  %147 = load %struct.IdxRemSlot*, %struct.IdxRemSlot** %8, align 8
  %148 = getelementptr inbounds %struct.IdxRemSlot, %struct.IdxRemSlot* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i32**, i32*** %6, align 8
  %151 = getelementptr inbounds i32*, i32** %150, i64 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @sqlite3_value_text(i32* %152)
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @memcpy(i8* %149, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %146, %136
  br label %157

157:                                              ; preds = %117, %72, %156, %90, %83, %82
  ret void
}

declare dso_local i64 @sqlite3_user_data(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i32) #1

declare dso_local i32 @sqlite3_result_double(i32*, i32) #1

declare dso_local i32 @sqlite3_result_blob(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @sqlite3_value_double(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i64 @sqlite3_realloc(i8*, i32) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sqlite3_value_blob(i32*) #1

declare dso_local i32 @sqlite3_value_text(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
