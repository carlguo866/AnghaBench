; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_bind_script_to_text.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_script.c_bind_script_to_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__, i32, i8*, %struct.TYPE_11__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@CP_UTF8 = common dso_local global i32 0, align 4
@URL_MK_UNIFORM = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i8* null, align 8
@ScriptBSCVtbl = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i8* null, align 8
@URL_SCHEME_UNKNOWN = common dso_local global i32 0, align 4
@S_OK = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"The buffer is not a valid utf16 string\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*, i32*, %struct.TYPE_11__*, i32**)* @bind_script_to_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bind_script_to_text(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_11__* %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32** %3, i32*** %9, align 8
  %16 = load i32, i32* @CP_UTF8, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @URL_MK_UNIFORM, align 4
  %19 = call i8* @CreateURLMonikerEx2(i32* null, i32* %17, i32** %12, i32 %18)
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = call i64 @FAILED(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i8*, i8** %14, align 8
  store i8* %24, i8** %5, align 8
  br label %191

25:                                               ; preds = %4
  %26 = call %struct.TYPE_10__* @heap_alloc_zero(i32 40)
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %11, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @IMoniker_Release(i32* %30)
  %32 = load i8*, i8** @E_OUTOFMEMORY, align 8
  store i8* %32, i8** %5, align 8
  br label %191

33:                                               ; preds = %25
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @init_bscallback(%struct.TYPE_13__* %35, i32* @ScriptBSCVtbl, i32* %36, i32 0)
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @IMoniker_Release(i32* %38)
  %40 = load i8*, i8** @E_FAIL, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = call i8* @IUri_GetScheme(i32* %43, i32* %45)
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = call i64 @FAILED(i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %33
  %51 = load i32, i32* @URL_SCHEME_UNKNOWN, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %33
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = call i32 @IHTMLScriptElement_AddRef(i32* %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = call i8* @start_binding(%struct.TYPE_12__* %61, %struct.TYPE_13__* %63, i32* null)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i64 @SUCCEEDED(i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %54
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %14, align 8
  br label %72

72:                                               ; preds = %68, %54
  %73 = load i8*, i8** %14, align 8
  %74 = call i64 @FAILED(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = call i32 @IBindStatusCallback_Release(i32* %79)
  %81 = load i8*, i8** %14, align 8
  store i8* %81, i8** %5, align 8
  br label %191

82:                                               ; preds = %72
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32**, i32*** %9, align 8
  store i32* null, i32** %89, align 8
  %90 = load i8*, i8** @S_OK, align 8
  store i8* %90, i8** %5, align 8
  br label %191

91:                                               ; preds = %82
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %138 [
    i32 129, label %96
    i32 128, label %143
  ]

96:                                               ; preds = %91
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = urem i64 %101, 4
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = call i32 @FIXME(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %106 = load i8*, i8** @E_FAIL, align 8
  store i8* %106, i8** %14, align 8
  br label %177

107:                                              ; preds = %96
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i32* @heap_alloc(i32 %114)
  store i32* %115, i32** %13, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %107
  %119 = load i8*, i8** @E_OUTOFMEMORY, align 8
  store i8* %119, i8** %14, align 8
  br label %177

120:                                              ; preds = %107
  %121 = load i32*, i32** %13, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @memcpy(i32* %121, i32 %124, i32 %128)
  %130 = load i32*, i32** %13, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = udiv i64 %135, 4
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  store i32 0, i32* %137, align 4
  br label %177

138:                                              ; preds = %91
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @get_document_charset(i32 %141)
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %91, %138
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i64 @MultiByteToWideChar(i32 %144, i32 0, i32 %147, i32 %151, i32* null, i64 0)
  store i64 %152, i64* %15, align 8
  %153 = load i64, i64* %15, align 8
  %154 = add i64 %153, 1
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i32* @heap_alloc(i32 %156)
  store i32* %157, i32** %13, align 8
  %158 = load i32*, i32** %13, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %143
  %161 = load i8*, i8** @E_OUTOFMEMORY, align 8
  store i8* %161, i8** %14, align 8
  br label %177

162:                                              ; preds = %143
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = load i64, i64* %15, align 8
  %173 = call i64 @MultiByteToWideChar(i32 %163, i32 0, i32 %166, i32 %170, i32* %171, i64 %172)
  %174 = load i32*, i32** %13, align 8
  %175 = load i64, i64* %15, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %162, %160, %120, %118, %104
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = call i32 @IBindStatusCallback_Release(i32* %180)
  %182 = load i8*, i8** %14, align 8
  %183 = call i64 @FAILED(i8* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = load i8*, i8** %14, align 8
  store i8* %186, i8** %5, align 8
  br label %191

187:                                              ; preds = %177
  %188 = load i32*, i32** %13, align 8
  %189 = load i32**, i32*** %9, align 8
  store i32* %188, i32** %189, align 8
  %190 = load i8*, i8** @S_OK, align 8
  store i8* %190, i8** %5, align 8
  br label %191

191:                                              ; preds = %187, %185, %88, %76, %29, %23
  %192 = load i8*, i8** %5, align 8
  ret i8* %192
}

declare dso_local i8* @CreateURLMonikerEx2(i32*, i32*, i32**, i32) #1

declare dso_local i64 @FAILED(i8*) #1

declare dso_local %struct.TYPE_10__* @heap_alloc_zero(i32) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @init_bscallback(%struct.TYPE_13__*, i32*, i32*, i32) #1

declare dso_local i8* @IUri_GetScheme(i32*, i32*) #1

declare dso_local i32 @IHTMLScriptElement_AddRef(i32*) #1

declare dso_local i8* @start_binding(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i64 @SUCCEEDED(i8*) #1

declare dso_local i32 @IBindStatusCallback_Release(i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @get_document_charset(i32) #1

declare dso_local i64 @MultiByteToWideChar(i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
